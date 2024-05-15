.class final Ljavax/crypto/JceSecurity;
.super Ljava/lang/Object;
.source "JceSecurity.java"


# static fields
.field private static final NULL_URL:Ljava/net/URL;

.field private static final PROVIDER_VERIFIED:Ljava/lang/Object;

.field static final RANDOM:Ljava/security/SecureRandom;

.field private static final codeBaseCacheRef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultPolicy:Ljavax/crypto/CryptoPermissions;

.field private static exemptPolicy:Ljavax/crypto/CryptoPermissions;

.field private static final verificationResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final verifyingProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/net/URL;
    .registers 1

    sget-object v0, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    .line 54
    sput-object v2, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    .line 55
    sput-object v2, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    .line 61
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 60
    sput-object v1, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    .line 65
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 64
    sput-object v1, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    .line 173
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;

    .line 221
    :try_start_1e
    new-instance v1, Ljava/net/URL;

    const-string/jumbo v2, "http://null.oracle.com/"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_30

    .line 229
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 228
    sput-object v1, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    .line 48
    return-void

    .line 222
    :catch_30
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method static canUseProvider(Ljava/security/Provider;)Z
    .registers 2
    .param p0, "p"    # Ljava/security/Provider;

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method static getCodeBase(Ljava/lang/Class;)Ljava/net/URL;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 235
    sget-object v2, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    monitor-enter v2

    .line 236
    :try_start_4
    sget-object v3, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 237
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_1e

    .line 238
    new-instance v3, Ljavax/crypto/JceSecurity$1;

    invoke-direct {v3, p0}, Ljavax/crypto/JceSecurity$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "url":Ljava/net/URL;
    check-cast v0, Ljava/net/URL;

    .line 250
    .restart local v0    # "url":Ljava/net/URL;
    sget-object v3, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_1e
    sget-object v3, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_25

    if-ne v0, v3, :cond_23

    move-object v0, v1

    .end local v0    # "url":Ljava/net/URL;
    :cond_23
    monitor-exit v2

    return-object v0

    .line 235
    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static getDefaultPolicy()Ljavax/crypto/CryptoPermissions;
    .registers 1

    .prologue
    .line 398
    sget-object v0, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    return-object v0
.end method

.method static getExemptPolicy()Ljavax/crypto/CryptoPermissions;
    .registers 1

    .prologue
    .line 402
    sget-object v0, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .registers 12
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 132
    .local v5, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    const/4 v1, 0x0

    .line 133
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .local v4, "s$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 134
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 139
    :try_start_1f
    invoke-static {v3, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1f .. :try_end_22} :catch_24

    move-result-object v2

    .line 140
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    return-object v2

    .line 141
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_24
    move-exception v0

    .line 142
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v0

    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    goto :goto_9

    .line 145
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .end local v3    # "s":Ljava/security/Provider$Service;
    :cond_27
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 146
    const-string/jumbo v8, " not available"

    .line 145
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .registers 9
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 108
    .local v1, "s":Ljava/security/Provider$Service;
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;

    move-result-object v2

    .line 109
    .local v2, "ve":Ljava/lang/Exception;
    if-eqz v2, :cond_2e

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JCE cannot authenticate the provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/security/NoSuchProviderException;

    invoke-direct {v3, v0}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/security/NoSuchProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 111
    check-cast v3, Ljava/security/NoSuchProviderException;

    throw v3

    .line 114
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2e
    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v3

    return-object v3
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;
    .registers 9
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 120
    .local v1, "s":Ljava/security/Provider$Service;
    invoke-static {p3}, Ljavax/crypto/JceSecurity;->getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;

    move-result-object v2

    .line 121
    .local v2, "ve":Ljava/lang/Exception;
    if-eqz v2, :cond_28

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JCE cannot authenticate the provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 123
    invoke-virtual {p3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 126
    .end local v0    # "msg":Ljava/lang/String;
    :cond_28
    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v3

    return-object v3
.end method

.method static declared-synchronized getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;
    .registers 8
    .param p0, "p"    # Ljava/security/Provider;

    .prologue
    const/4 v6, 0x0

    const-class v4, Ljavax/crypto/JceSecurity;

    monitor-enter v4

    .line 182
    :try_start_4
    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 183
    .local v1, "o":Ljava/lang/Object;
    sget-object v3, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_5c

    if-ne v1, v3, :cond_10

    monitor-exit v4

    .line 184
    return-object v6

    .line 185
    :cond_10
    if-eqz v1, :cond_16

    .line 186
    :try_start_12
    check-cast v1, Ljava/lang/Exception;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_5c

    .end local v1    # "o":Ljava/lang/Object;
    monitor-exit v4

    return-object v1

    .line 188
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_16
    :try_start_16
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 191
    new-instance v3, Ljava/security/NoSuchProviderException;

    const-string/jumbo v5, "Recursion during verification"

    invoke-direct {v3, v5}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_5c

    monitor-exit v4

    return-object v3

    .line 194
    :cond_28
    :try_start_28
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {p0}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->getCodeBase(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v2

    .line 196
    .local v2, "providerURL":Ljava/net/URL;
    invoke-static {v2}, Ljavax/crypto/JceSecurity;->verifyProviderJar(Ljava/net/URL;)V

    .line 198
    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    sget-object v5, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;

    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_41} :catch_48
    .catchall {:try_start_28 .. :try_end_41} :catchall_55

    .line 204
    :try_start_41
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_5c

    monitor-exit v4

    .line 199
    return-object v6

    .line 200
    .end local v2    # "providerURL":Ljava/net/URL;
    :catch_48
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    :try_start_49
    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_55

    .line 204
    :try_start_4e
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_5c

    monitor-exit v4

    .line 202
    return-object v0

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_55
    move-exception v3

    .line 204
    :try_start_56
    sget-object v5, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    throw v3
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5c

    .end local v1    # "o":Ljava/lang/Object;
    :catchall_5c
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static loadPolicies(Ljava/io/File;Ljavax/crypto/CryptoPermissions;Ljavax/crypto/CryptoPermissions;)V
    .registers 9
    .param p0, "jarPathName"    # Ljava/io/File;
    .param p1, "defaultPolicy"    # Ljavax/crypto/CryptoPermissions;
    .param p2, "exemptPolicy"    # Ljavax/crypto/CryptoPermissions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 367
    .local v3, "jf":Ljava/util/jar/JarFile;
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 368
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 369
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    .line 370
    .local v2, "je":Ljava/util/jar/JarEntry;
    const/4 v1, 0x0

    .line 372
    .local v1, "is":Ljava/io/InputStream;
    :try_start_16
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "default_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 373
    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 374
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p1, v1}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_4c

    .line 382
    :goto_2a
    if-eqz v1, :cond_2f

    .line 383
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 390
    :cond_2f
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/JarVerifier;->verifyPolicySigned([Ljava/security/cert/Certificate;)V

    goto :goto_9

    .line 375
    .local v1, "is":Ljava/io/InputStream;
    :cond_37
    :try_start_37
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "exempt_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 376
    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 377
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p2, v1}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_4c

    goto :goto_2a

    .line 381
    .end local v1    # "is":Ljava/io/InputStream;
    :catchall_4c
    move-exception v4

    .line 382
    if-eqz v1, :cond_52

    .line 383
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 381
    :cond_52
    throw v4

    .line 393
    .end local v2    # "je":Ljava/util/jar/JarEntry;
    :cond_53
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 394
    const/4 v3, 0x0

    .line 395
    .local v3, "jf":Ljava/util/jar/JarFile;
    return-void
.end method

.method static verifyExemptJar(Ljava/net/URL;)Ljavax/crypto/CryptoPermissions;
    .registers 3
    .param p0, "codeBase"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljavax/crypto/JarVerifier;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/JarVerifier;-><init>(Ljava/net/URL;Z)V

    .line 157
    .local v0, "jv":Ljavax/crypto/JarVerifier;
    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->verify()V

    .line 158
    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->getPermissions()Ljavax/crypto/CryptoPermissions;

    move-result-object v1

    return-object v1
.end method

.method static verifyProviderJar(Ljava/net/URL;)V
    .registers 3
    .param p0, "codeBase"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljavax/crypto/JarVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/crypto/JarVerifier;-><init>(Ljava/net/URL;Z)V

    .line 170
    .local v0, "jv":Ljavax/crypto/JarVerifier;
    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->verify()V

    .line 171
    return-void
.end method
