.class public abstract Ljava/security/Provider;
.super Ljava/util/Properties;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Provider$Service;,
        Ljava/security/Provider$EngineDescription;,
        Ljava/security/Provider$UString;,
        Ljava/security/Provider$ServiceKey;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALIAS_LENGTH:I

.field private static final greylist-max-o ALIAS_PREFIX:Ljava/lang/String; = "Alg.Alias."

.field private static final greylist-max-o ALIAS_PREFIX_LOWER:Ljava/lang/String; = "alg.alias."

.field private static final greylist-max-o debug:Lsun/security/util/Debug;

.field private static final greylist-max-o knownEngines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$EngineDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-o previousKey:Ljava/security/Provider$ServiceKey; = null

.field static final whitelist serialVersionUID:J = -0x3ba590b26fa1505bL


# instance fields
.field private transient greylist-max-o entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o entrySetCallCount:I

.field private greylist-max-o info:Ljava/lang/String;

.field private transient greylist-max-o initialized:Z

.field private transient greylist-max-o legacyChanged:Z

.field private transient greylist-max-o legacyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o legacyStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o name:Ljava/lang/String;

.field private volatile greylist-max-o registered:Z

.field private transient greylist-max-o serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o serviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o servicesChanged:Z

.field private greylist-max-o version:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 104
    nop

    .line 106
    const-string v0, "provider"

    const-string v1, "Provider"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    .line 977
    const-string v0, "Alg.Alias."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Ljava/security/Provider;->ALIAS_LENGTH:I

    .line 1090
    new-instance v0, Ljava/security/Provider$ServiceKey;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$1;)V

    sput-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    .line 1344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    .line 1346
    const-string v0, "AlgorithmParameterGenerator"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1347
    const-string v0, "AlgorithmParameters"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1348
    const-string v0, "KeyFactory"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1349
    const-string v0, "KeyPairGenerator"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1350
    const-string v0, "KeyStore"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1351
    const-string v0, "MessageDigest"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1352
    const-string v0, "SecureRandom"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1353
    const-string v0, "Signature"

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1354
    const-string v0, "CertificateFactory"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1355
    const-string v0, "CertPathBuilder"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1356
    const-string v0, "CertPathValidator"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1357
    const-string v0, "CertStore"

    const-string v4, "java.security.cert.CertStoreParameters"

    invoke-static {v0, v2, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1360
    const-string v0, "Cipher"

    invoke-static {v0, v1, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1361
    const-string v0, "ExemptionMechanism"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1362
    const-string v0, "Mac"

    invoke-static {v0, v1, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1363
    const-string v0, "KeyAgreement"

    invoke-static {v0, v1, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1364
    const-string v0, "KeyGenerator"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1365
    const-string v0, "SecretKeyFactory"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1367
    const-string v0, "KeyManagerFactory"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1368
    const-string v0, "SSLContext"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1369
    const-string v0, "TrustManagerFactory"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1371
    const-string v0, "GssApiMechanism"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1373
    const-string v0, "SaslClientFactory"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1374
    const-string v0, "SaslServerFactory"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1376
    const-string v0, "Policy"

    const-string v1, "java.security.Policy$Parameters"

    invoke-static {v0, v2, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1379
    const-string v0, "Configuration"

    const-string v1, "javax.security.auth.login.Configuration$Parameters"

    invoke-static {v0, v2, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1382
    const-string v0, "XMLSignatureFactory"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1383
    const-string v0, "KeyInfoFactory"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1384
    const-string v0, "TransformService"

    invoke-static {v0, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1386
    const-string v0, "TerminalFactory"

    const-string v1, "java.lang.Object"

    invoke-static {v0, v2, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1388
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;DLjava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # D
    .param p4, "info"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    .line 131
    iput v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    .line 146
    iput-object p1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    .line 147
    iput-wide p2, p0, Ljava/security/Provider;->version:D

    .line 148
    iput-object p4, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Ljava/security/Provider;->putId()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->initialized:Z

    .line 151
    return-void
.end method

.method static synthetic blacklist access$1000()Ljava/util/Map;
    .registers 1

    .line 93
    sget-object v0, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$900(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 93
    invoke-static {p0}, Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o addEngine(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sp"    # Z
    .param p2, "paramName"    # Ljava/lang/String;

    .line 1337
    new-instance v0, Ljava/security/Provider$EngineDescription;

    invoke-direct {v0, p0, p1, p2}, Ljava/security/Provider$EngineDescription;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1339
    .local v0, "ed":Ljava/security/Provider$EngineDescription;
    sget-object v1, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    return-void
.end method

.method private greylist-max-o check(Ljava/lang/String;)V
    .registers 3
    .param p1, "directive"    # Ljava/lang/String;

    .line 666
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 667
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 668
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 669
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 671
    :cond_c
    return-void
.end method

.method private greylist-max-o checkInitialized()V
    .registers 2

    .line 660
    iget-boolean v0, p0, Ljava/security/Provider;->initialized:Z

    if-eqz v0, :cond_5

    .line 663
    return-void

    .line 661
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private greylist-max-o checkLegacy(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 721
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    if-eqz v0, :cond_7

    .line 722
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 724
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 725
    .local v0, "keyString":Ljava/lang/String;
    const-string v1, "Provider."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 726
    const/4 v1, 0x0

    return v1

    .line 729
    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 730
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v2, :cond_22

    .line 731
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    .line 733
    :cond_22
    return v1
.end method

.method private greylist-max-o ensureLegacyParsed()V
    .registers 5

    .line 931
    iget-boolean v0, p0, Ljava/security/Provider;->legacyChanged:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v0, :cond_9

    goto :goto_4a

    .line 934
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 935
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-nez v0, :cond_18

    .line 936
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    goto :goto_1b

    .line 938
    :cond_18
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 940
    :goto_1b
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 941
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/security/Provider;->parseLegacyPut(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_25

    .line 943
    :cond_41
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Ljava/security/Provider;->removeInvalidServices(Ljava/util/Map;)V

    .line 944
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 945
    return-void

    .line 932
    :cond_4a
    :goto_4a
    return-void
.end method

.method private static greylist-max-o getEngineName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1394
    sget-object v0, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$EngineDescription;

    .line 1395
    .local v1, "e":Ljava/security/Provider$EngineDescription;
    if-nez v1, :cond_17

    .line 1396
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/security/Provider$EngineDescription;

    .line 1398
    :cond_17
    if-nez v1, :cond_1b

    move-object v0, p0

    goto :goto_1d

    :cond_1b
    iget-object v0, v1, Ljava/security/Provider$EngineDescription;->name:Ljava/lang/String;

    :goto_1d
    return-object v0
.end method

.method private greylist-max-o getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .line 962
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 963
    .local v0, "i":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_2d

    .line 964
    sget-object v1, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2b

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring invalid entry in provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 968
    :cond_2b
    const/4 v1, 0x0

    return-object v1

    .line 970
    :cond_2d
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 971
    .local v3, "type":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 972
    .local v4, "alg":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    return-object v5
.end method

.method private greylist-max-o implClear()V
    .registers 2

    .line 876
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 877
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 879
    :cond_7
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v0, :cond_e

    .line 880
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 882
    :cond_e
    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v0, :cond_15

    .line 883
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 885
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 886
    iput-boolean v0, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 887
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 888
    invoke-super {p0}, Ljava/util/Properties;->clear()V

    .line 889
    invoke-direct {p0}, Ljava/security/Provider;->putId()V

    .line 891
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    if-eqz v0, :cond_2a

    .line 892
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 894
    :cond_2a
    return-void
.end method

.method private greylist-max-o implCompute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 816
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 817
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 818
    const/4 v0, 0x0

    return-object v0

    .line 825
    :cond_c
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 830
    :cond_14
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implComputeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 834
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Object;+Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 835
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 836
    const/4 v0, 0x0

    return-object v0

    .line 838
    :cond_c
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 841
    :cond_14
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implComputeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 845
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 846
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 847
    const/4 v0, 0x0

    return-object v0

    .line 849
    :cond_c
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 852
    :cond_14
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implMerge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 805
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1b

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 806
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 807
    const/4 v0, 0x0

    return-object v0

    .line 809
    :cond_10
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2, p3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 812
    :cond_1b
    invoke-super {p0, p1, p2, p3}, Ljava/util/Properties;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 856
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1b

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 857
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 858
    const/4 v0, 0x0

    return-object v0

    .line 860
    :cond_10
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    :cond_1b
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implPutAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 742
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 743
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/security/Provider;->implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_8

    .line 746
    :cond_20
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    if-eqz v0, :cond_27

    .line 747
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 749
    :cond_27
    return-void
.end method

.method private greylist-max-o implPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 866
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1b

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 867
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 868
    const/4 v0, 0x0

    return-object v0

    .line 870
    :cond_10
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    :cond_1b
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 752
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 753
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 754
    const/4 v0, 0x0

    return-object v0

    .line 756
    :cond_c
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :cond_14
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implRemove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 762
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_18

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 763
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 764
    const/4 v0, 0x0

    return v0

    .line 766
    :cond_10
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 768
    :cond_18
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o implRemoveService(Ljava/security/Provider$Service;)V
    .registers 12
    .param p1, "s"    # Ljava/security/Provider$Service;

    .line 1263
    if-eqz p1, :cond_4c

    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-nez v0, :cond_7

    goto :goto_4c

    .line 1266
    :cond_7
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1267
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 1268
    .local v1, "algorithm":Ljava/lang/String;
    new-instance v2, Ljava/security/Provider$ServiceKey;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$1;)V

    .line 1269
    .local v2, "key":Ljava/security/Provider$ServiceKey;
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider$Service;

    .line 1270
    .local v5, "oldService":Ljava/security/Provider$Service;
    if-eq p1, v5, :cond_21

    .line 1271
    return-void

    .line 1273
    :cond_21
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 1274
    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    # invokes: Ljava/security/Provider$Service;->getAliases()Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$700(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1276
    .local v7, "alias":Ljava/lang/String;
    iget-object v8, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    new-instance v9, Ljava/security/Provider$ServiceKey;

    invoke-direct {v9, v0, v7, v3, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$1;)V

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    .end local v7    # "alias":Ljava/lang/String;
    goto :goto_31

    .line 1278
    :cond_48
    invoke-direct {p0, p1}, Ljava/security/Provider;->removePropertyStrings(Ljava/security/Provider$Service;)V

    .line 1279
    return-void

    .line 1264
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v2    # "key":Ljava/security/Provider$ServiceKey;
    .end local v5    # "oldService":Ljava/security/Provider$Service;
    :cond_4c
    :goto_4c
    return-void
.end method

.method private greylist-max-o implReplace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 784
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1b

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 785
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 786
    const/4 v0, 0x0

    return-object v0

    .line 788
    :cond_10
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_1b
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 772
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_22

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_22

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 774
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 775
    const/4 v0, 0x0

    return v0

    .line 777
    :cond_14
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 780
    :cond_22
    invoke-super {p0, p1, p2, p3}, Ljava/util/Properties;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o implReplaceAll(Ljava/util/function/BiFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 794
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 795
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v0, :cond_f

    .line 796
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    goto :goto_12

    .line 798
    :cond_f
    invoke-interface {v0, p1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 800
    :goto_12
    invoke-super {p0, p1}, Ljava/util/Properties;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 801
    return-void
.end method

.method private greylist-max-o parseLegacyPut(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 980
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alg.alias."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5a

    .line 983
    move-object v0, p2

    .line 984
    .local v0, "stdAlg":Ljava/lang/String;
    sget v4, Ljava/security/Provider;->ALIAS_LENGTH:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 985
    .local v4, "aliasKey":Ljava/lang/String;
    invoke-direct {p0, v4}, Ljava/security/Provider;->getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 986
    .local v5, "typeAndAlg":[Ljava/lang/String;
    if-nez v5, :cond_1f

    .line 987
    return-void

    .line 989
    :cond_1f
    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 990
    .local v1, "type":Ljava/lang/String;
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 991
    .local v6, "aliasAlg":Ljava/lang/String;
    new-instance v7, Ljava/security/Provider$ServiceKey;

    invoke-direct {v7, v1, v0, v3, v2}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$1;)V

    .line 992
    .local v7, "key":Ljava/security/Provider$ServiceKey;
    iget-object v8, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Provider$Service;

    .line 993
    .local v8, "s":Ljava/security/Provider$Service;
    if-nez v8, :cond_4b

    .line 994
    new-instance v9, Ljava/security/Provider$Service;

    invoke-direct {v9, p0, v2}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$1;)V

    move-object v8, v9

    .line 995
    # setter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {v8, v1}, Ljava/security/Provider$Service;->access$302(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 996
    # setter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {v8, v0}, Ljava/security/Provider$Service;->access$402(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 997
    iget-object v9, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    :cond_4b
    iget-object v9, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    new-instance v10, Ljava/security/Provider$ServiceKey;

    invoke-direct {v10, v1, v6, v3, v2}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$1;)V

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    # invokes: Ljava/security/Provider$Service;->addAlias(Ljava/lang/String;)V
    invoke-static {v8, v6}, Ljava/security/Provider$Service;->access$500(Ljava/security/Provider$Service;Ljava/lang/String;)V

    .line 1001
    .end local v0    # "stdAlg":Ljava/lang/String;
    .end local v1    # "type":Ljava/lang/String;
    .end local v4    # "aliasKey":Ljava/lang/String;
    .end local v5    # "typeAndAlg":[Ljava/lang/String;
    .end local v6    # "aliasAlg":Ljava/lang/String;
    .end local v7    # "key":Ljava/security/Provider$ServiceKey;
    .end local v8    # "s":Ljava/security/Provider$Service;
    goto/16 :goto_ea

    .line 1002
    :cond_5a
    invoke-direct {p0, p1}, Ljava/security/Provider;->getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, "typeAndAlg":[Ljava/lang/String;
    if-nez v0, :cond_61

    .line 1004
    return-void

    .line 1006
    :cond_61
    aget-object v4, v0, v3

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1007
    .local v4, "i":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_9e

    .line 1009
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1010
    .restart local v1    # "type":Ljava/lang/String;
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 1011
    .local v5, "stdAlg":Ljava/lang/String;
    move-object v6, p2

    .line 1012
    .local v6, "className":Ljava/lang/String;
    new-instance v7, Ljava/security/Provider$ServiceKey;

    invoke-direct {v7, v1, v5, v3, v2}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$1;)V

    move-object v3, v7

    .line 1013
    .local v3, "key":Ljava/security/Provider$ServiceKey;
    iget-object v7, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/Provider$Service;

    .line 1014
    .local v7, "s":Ljava/security/Provider$Service;
    if-nez v7, :cond_9a

    .line 1015
    new-instance v8, Ljava/security/Provider$Service;

    invoke-direct {v8, p0, v2}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$1;)V

    move-object v7, v8

    .line 1016
    # setter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {v7, v1}, Ljava/security/Provider$Service;->access$302(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 1017
    # setter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {v7, v5}, Ljava/security/Provider$Service;->access$402(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 1018
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    :cond_9a
    # setter for: Ljava/security/Provider$Service;->className:Ljava/lang/String;
    invoke-static {v7, v6}, Ljava/security/Provider$Service;->access$602(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    .end local v1    # "type":Ljava/lang/String;
    .end local v3    # "key":Ljava/security/Provider$ServiceKey;
    .end local v5    # "stdAlg":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "s":Ljava/security/Provider$Service;
    goto :goto_ea

    .line 1023
    :cond_9e
    move-object v5, p2

    .line 1024
    .local v5, "attributeValue":Ljava/lang/String;
    aget-object v6, v0, v1

    invoke-static {v6}, Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1025
    .local v6, "type":Ljava/lang/String;
    aget-object v7, v0, v3

    .line 1026
    .local v7, "attributeString":Ljava/lang/String;
    invoke-virtual {v7, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "stdAlg":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1029
    .local v8, "attributeName":Ljava/lang/String;
    :goto_b5
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c2

    .line 1030
    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_b5

    .line 1032
    :cond_c2
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 1033
    new-instance v9, Ljava/security/Provider$ServiceKey;

    invoke-direct {v9, v6, v1, v3, v2}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$1;)V

    move-object v3, v9

    .line 1034
    .restart local v3    # "key":Ljava/security/Provider$ServiceKey;
    iget-object v9, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    .line 1035
    .local v9, "s":Ljava/security/Provider$Service;
    if-nez v9, :cond_e7

    .line 1036
    new-instance v10, Ljava/security/Provider$Service;

    invoke-direct {v10, p0, v2}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$1;)V

    move-object v9, v10

    .line 1037
    # setter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {v9, v6}, Ljava/security/Provider$Service;->access$302(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 1038
    # setter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {v9, v1}, Ljava/security/Provider$Service;->access$402(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 1039
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    :cond_e7
    invoke-virtual {v9, v8, v5}, Ljava/security/Provider$Service;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    .end local v0    # "typeAndAlg":[Ljava/lang/String;
    .end local v1    # "stdAlg":Ljava/lang/String;
    .end local v3    # "key":Ljava/security/Provider$ServiceKey;
    .end local v4    # "i":I
    .end local v5    # "attributeValue":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "attributeString":Ljava/lang/String;
    .end local v8    # "attributeName":Ljava/lang/String;
    .end local v9    # "s":Ljava/security/Provider$Service;
    :goto_ea
    return-void
.end method

.method private greylist-max-o putId()V
    .registers 3

    .line 698
    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provider.id name"

    invoke-super {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-wide v0, p0, Ljava/security/Provider;->version:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provider.id version"

    invoke-super {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provider.id info"

    invoke-super {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provider.id className"

    invoke-super {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    return-void
.end method

.method private greylist-max-o putPropertyStrings(Ljava/security/Provider$Service;)V
    .registers 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    .line 1184
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 1187
    .local v1, "algorithm":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v2, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    # invokes: Ljava/security/Provider$Service;->getAliases()Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$700(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1189
    .local v4, "alias":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg.Alias."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    .end local v4    # "alias":Ljava/lang/String;
    goto :goto_2b

    .line 1191
    :cond_52
    # getter for: Ljava/security/Provider$Service;->attributes:Ljava/util/Map;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$800(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1192
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1193
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-super {p0, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_5e

    .line 1196
    :cond_90
    iget-boolean v2, p0, Ljava/security/Provider;->registered:Z

    if-eqz v2, :cond_97

    .line 1197
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 1199
    :cond_97
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 707
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    .line 708
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 709
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 710
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_10

    .line 712
    :cond_28
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Provider;->defaults:Ljava/util/Properties;

    .line 713
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 714
    invoke-direct {p0}, Ljava/security/Provider;->implClear()V

    .line 715
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/Provider;->initialized:Z

    .line 716
    invoke-virtual {p0, v0}, Ljava/security/Provider;->putAll(Ljava/util/Map;)V

    .line 717
    return-void
.end method

.method private greylist-max-o removeInvalidServices(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;)V"
        }
    .end annotation

    .line 952
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/Provider$ServiceKey;Ljava/security/Provider$Service;>;"
    nop

    .line 953
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/security/Provider$ServiceKey;Ljava/security/Provider$Service;>;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 954
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    .line 955
    .local v1, "s":Ljava/security/Provider$Service;
    # invokes: Ljava/security/Provider$Service;->isValid()Z
    invoke-static {v1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 956
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 958
    .end local v1    # "s":Ljava/security/Provider$Service;
    :cond_24
    goto :goto_9

    .line 959
    .end local v0    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/security/Provider$ServiceKey;Ljava/security/Provider$Service;>;>;"
    :cond_25
    return-void
.end method

.method private greylist-max-o removePropertyStrings(Ljava/security/Provider$Service;)V
    .registers 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    .line 1206
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 1209
    .local v1, "algorithm":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    # invokes: Ljava/security/Provider$Service;->getAliases()Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$700(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1211
    .local v4, "alias":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg.Alias."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    .end local v4    # "alias":Ljava/lang/String;
    goto :goto_27

    .line 1213
    :cond_4e
    # getter for: Ljava/security/Provider$Service;->attributes:Ljava/util/Map;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$800(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1214
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1215
    .local v5, "key":Ljava/lang/String;
    invoke-super {p0, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_5a

    .line 1218
    :cond_88
    iget-boolean v2, p0, Ljava/security/Provider;->registered:Z

    if-eqz v2, :cond_8f

    .line 1219
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 1221
    :cond_8f
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api clear()V
    .registers 4

    monitor-enter p0

    .line 216
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearProviderProperties."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 217
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_36

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 220
    .end local p0    # "this":Ljava/security/Provider;
    :cond_36
    invoke-direct {p0}, Ljava/security/Provider;->implClear()V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 221
    monitor-exit p0

    return-void

    .line 215
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 515
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 518
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_4f

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 521
    .end local p0    # "this":Ljava/security/Provider;
    :cond_4f
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implCompute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_55

    monitor-exit p0

    return-object v0

    .line 514
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 545
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 548
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_4f

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComputeIfAbsent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 552
    .end local p0    # "this":Ljava/security/Provider;
    :cond_4f
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implComputeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_55

    monitor-exit p0

    return-object v0

    .line 544
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Object;+Ljava/lang/Object;>;"
    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 574
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 577
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_4f

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComputeIfPresent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 581
    .end local p0    # "this":Ljava/security/Provider;
    :cond_4f
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implComputeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_55

    monitor-exit p0

    return-object v0

    .line 573
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 649
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 650
    invoke-super {p0}, Ljava/util/Properties;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 267
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 268
    iget-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_21

    .line 269
    iget v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/security/Provider;->entrySetCallCount:I

    if-nez v0, :cond_1b

    .line 270
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    goto :goto_21

    .line 272
    .end local p0    # "this":Ljava/security/Provider;
    :cond_1b
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_32

    monitor-exit p0

    return-object v0

    .line 280
    :cond_21
    :goto_21
    :try_start_21
    iget v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 283
    iget-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_32

    monitor-exit p0

    return-object v0

    .line 281
    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 266
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/lang/Object;-Ljava/lang/Object;>;"
    monitor-enter p0

    .line 635
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 636
    invoke-super {p0, p1}, Ljava/util/Properties;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 637
    monitor-exit p0

    return-void

    .line 634
    .end local p0    # "this":Ljava/security/Provider;
    .end local p1    # "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/lang/Object;-Ljava/lang/Object;>;"
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 618
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 619
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getInfo()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    monitor-enter p0

    .line 626
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 627
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 625
    .end local p0    # "this":Ljava/security/Provider;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 655
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 656
    invoke-super {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    monitor-enter p0

    .line 1067
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 1069
    sget-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    .line 1070
    .local v0, "key":Ljava/security/Provider$ServiceKey;
    invoke-virtual {v0, p1, p2}, Ljava/security/Provider$ServiceKey;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 1071
    new-instance v1, Ljava/security/Provider$ServiceKey;

    const/4 v3, 0x0

    invoke-direct {v1, p1, p2, v3, v2}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$1;)V

    move-object v0, v1

    .line 1072
    sput-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    .line 1074
    .end local p0    # "this":Ljava/security/Provider;
    :cond_16
    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v1, :cond_24

    .line 1075
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_34

    .line 1076
    .local v1, "service":Ljava/security/Provider$Service;
    if-eqz v1, :cond_24

    .line 1077
    monitor-exit p0

    return-object v1

    .line 1080
    .end local v1    # "service":Ljava/security/Provider$Service;
    :cond_24
    :try_start_24
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    .line 1081
    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v1, :cond_32

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/security/Provider$Service;
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_34

    :cond_32
    monitor-exit p0

    return-object v2

    .line 1066
    .end local v0    # "key":Ljava/security/Provider$ServiceKey;
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api getServices()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1103
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 1104
    iget-boolean v0, p0, Ljava/security/Provider;->legacyChanged:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Ljava/security/Provider;->servicesChanged:Z

    if-eqz v0, :cond_f

    .line 1105
    .end local p0    # "this":Ljava/security/Provider;
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 1107
    :cond_f
    iget-object v0, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    if-nez v0, :cond_3a

    .line 1108
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    .line 1109
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1110
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v1, :cond_26

    .line 1111
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1113
    :cond_26
    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v1, :cond_31

    .line 1114
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1116
    :cond_31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 1117
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 1119
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    :cond_3a
    iget-object v0, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v0

    .line 1102
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api getVersion()D
    .registers 3

    .line 168
    iget-wide v0, p0, Ljava/security/Provider;->version:D

    return-wide v0
.end method

.method public greylist-max-o isRegistered()Z
    .registers 2

    .line 1905
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 295
    invoke-super {p0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 642
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 643
    invoke-super {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api load(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 233
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 234
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_36

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 237
    .end local p0    # "this":Ljava/security/Provider;
    :cond_36
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 238
    .local v0, "tempProperties":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 239
    invoke-direct {p0, v0}, Ljava/security/Provider;->implPutAll(Ljava/util/Map;)V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    .line 240
    monitor-exit p0

    return-void

    .line 232
    .end local v0    # "tempProperties":Ljava/util/Properties;
    .end local p1    # "inStream":Ljava/io/InputStream;
    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 606
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 609
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_4f

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Merge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 612
    .end local p0    # "this":Ljava/security/Provider;
    :cond_4f
    invoke-direct {p0, p1, p2, p3}, Ljava/security/Provider;->implMerge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_55

    monitor-exit p0

    return-object v0

    .line 605
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 328
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 329
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_46

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 333
    .end local p0    # "this":Ljava/security/Provider;
    :cond_46
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    monitor-exit p0

    return-object v0

    .line 327
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api putAll(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    monitor-enter p0

    .line 251
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 252
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_36

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 255
    .end local p0    # "this":Ljava/security/Provider;
    :cond_36
    invoke-direct {p0, p1}, Ljava/security/Provider;->implPutAll(Ljava/util/Map;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 256
    monitor-exit p0

    return-void

    .line 250
    .end local p1    # "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 355
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 356
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_46

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 360
    .end local p0    # "this":Ljava/security/Provider;
    :cond_46
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    monitor-exit p0

    return-object v0

    .line 354
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized whitelist test-api putService(Ljava/security/Provider$Service;)V
    .registers 11
    .param p1, "s"    # Ljava/security/Provider$Service;

    monitor-enter p0

    .line 1152
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 1153
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_34

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".putService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1156
    .end local p0    # "this":Ljava/security/Provider;
    :cond_34
    if-eqz p1, :cond_95

    .line 1159
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    if-ne v0, p0, :cond_8d

    .line 1163
    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-nez v0, :cond_47

    .line 1164
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    .line 1166
    :cond_47
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 1167
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1168
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 1169
    .local v2, "algorithm":Ljava/lang/String;
    new-instance v3, Ljava/security/Provider$ServiceKey;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v0, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$1;)V

    .line 1171
    .local v3, "key":Ljava/security/Provider$ServiceKey;
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider$Service;

    invoke-direct {p0, v5}, Ljava/security/Provider;->implRemoveService(Ljava/security/Provider$Service;)V

    .line 1172
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    # invokes: Ljava/security/Provider$Service;->getAliases()Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$700(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_70
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1174
    .local v6, "alias":Ljava/lang/String;
    iget-object v7, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    new-instance v8, Ljava/security/Provider$ServiceKey;

    invoke-direct {v8, v1, v6, v0, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$1;)V

    invoke-interface {v7, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    nop

    .end local v6    # "alias":Ljava/lang/String;
    goto :goto_70

    .line 1176
    :cond_88
    invoke-direct {p0, p1}, Ljava/security/Provider;->putPropertyStrings(Ljava/security/Provider$Service;)V
    :try_end_8b
    .catchall {:try_start_1 .. :try_end_8b} :catchall_9b

    .line 1177
    monitor-exit p0

    return-void

    .line 1160
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "algorithm":Ljava/lang/String;
    .end local v3    # "key":Ljava/security/Provider$ServiceKey;
    :cond_8d
    :try_start_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service.getProvider() must match this Provider object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_95
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_9b
    .catchall {:try_start_8d .. :try_end_9b} :catchall_9b

    .line 1151
    .end local p1    # "s":Ljava/security/Provider$Service;
    :catchall_9b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 381
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 382
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_39

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 385
    .end local p0    # "this":Ljava/security/Provider;
    :cond_39
    invoke-direct {p0, p1}, Ljava/security/Provider;->implRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return-object v0

    .line 380
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 406
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 407
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_39

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 410
    .end local p0    # "this":Ljava/security/Provider;
    :cond_39
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implRemove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return v0

    .line 405
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized whitelist test-api removeService(Ljava/security/Provider$Service;)V
    .registers 5
    .param p1, "s"    # Ljava/security/Provider$Service;

    monitor-enter p0

    .line 1252
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 1253
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_34

    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".removeService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1256
    .end local p0    # "this":Ljava/security/Provider;
    :cond_34
    if-eqz p1, :cond_3b

    .line 1259
    invoke-direct {p0, p1}, Ljava/security/Provider;->implRemoveService(Ljava/security/Provider$Service;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_41

    .line 1260
    monitor-exit p0

    return-void

    .line 1257
    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_41

    .line 1251
    .end local p1    # "s":Ljava/security/Provider$Service;
    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 458
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 460
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_39

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 463
    .end local p0    # "this":Ljava/security/Provider;
    :cond_39
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implReplace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return-object v0

    .line 457
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    monitor-enter p0

    .line 432
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 434
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_39

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 437
    .end local p0    # "this":Ljava/security/Provider;
    :cond_39
    invoke-direct {p0, p1, p2, p3}, Ljava/security/Provider;->implReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return v0

    .line 431
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "oldValue":Ljava/lang/Object;
    .end local p3    # "newValue":Ljava/lang/Object;
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 486
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 488
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_36

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplaceAll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 491
    .end local p0    # "this":Ljava/security/Provider;
    :cond_36
    invoke-direct {p0, p1}, Ljava/security/Provider;->implReplaceAll(Ljava/util/function/BiFunction;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 492
    monitor-exit p0

    return-void

    .line 485
    .end local p1    # "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o setRegistered()V
    .registers 2

    .line 1891
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    .line 1892
    return-void
.end method

.method public greylist-max-o setUnregistered()V
    .registers 2

    .line 1898
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    .line 1899
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljava/security/Provider;->version:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 306
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 307
    invoke-super {p0}, Ljava/util/Properties;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized greylist-max-o test-api warmUpServiceProvision()V
    .registers 2

    monitor-enter p0

    .line 1917
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 1920
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    .line 1923
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1924
    monitor-exit p0

    return-void

    .line 1916
    .end local p0    # "this":Ljava/security/Provider;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
