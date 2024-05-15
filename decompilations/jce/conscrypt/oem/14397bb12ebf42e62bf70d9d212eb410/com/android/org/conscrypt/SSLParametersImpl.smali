.class final Lcom/android/org/conscrypt/SSLParametersImpl;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;,
        Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static volatile defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private static volatile defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field alpnProtocols:[B

.field channelIdEnabled:Z

.field private final clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

.field private client_mode:Z

.field private ctVerificationEnabled:Z

.field private enable_session_creation:Z

.field enabledCipherSuites:[Ljava/lang/String;

.field enabledProtocols:[Ljava/lang/String;

.field private endpointIdentificationAlgorithm:Ljava/lang/String;

.field isEnabledProtocolsFiltered:Z

.field private need_client_auth:Z

.field ocspResponse:[B

.field private final pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

.field sctExtension:[B

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

.field private useCipherSuitesOrder:Z

.field useSessionTickets:Z

.field private useSni:Ljava/lang/Boolean;

.field private want_client_auth:Z

.field private final x509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private final x509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 400
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 46
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V
    .registers 12
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .param p4, "clientSessionContext"    # Lcom/android/org/conscrypt/ClientSessionContext;
    .param p5, "serverSessionContext"    # Lcom/android/org/conscrypt/ServerSessionContext;
    .param p6, "protocols"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 120
    iput-object p5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    .line 121
    iput-object p4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 124
    if-nez p1, :cond_4b

    .line 125
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 127
    iput-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    .line 134
    :goto_1c
    if-nez p2, :cond_58

    .line 135
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 145
    :goto_24
    iput-object p3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 149
    if-nez p6, :cond_2a

    sget-object p6, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    .line 148
    .end local p6    # "protocols":[Ljava/lang/String;
    :cond_2a
    invoke-static {p6}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_5f

    :cond_3e
    const/4 v1, 0x1

    .line 151
    .local v1, "x509CipherSuitesNeeded":Z
    :goto_3f
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    if-eqz v2, :cond_61

    const/4 v0, 0x1

    .line 152
    .local v0, "pskCipherSuitesNeeded":Z
    :goto_44
    invoke-static {v1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultCipherSuites(ZZ)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 154
    return-void

    .line 129
    .end local v0    # "pskCipherSuitesNeeded":Z
    .end local v1    # "x509CipherSuitesNeeded":Z
    .restart local p6    # "protocols":[Ljava/lang/String;
    :cond_4b
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 130
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    goto :goto_1c

    .line 137
    :cond_58
    invoke-static {p2}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    goto :goto_24

    .line 150
    .end local p6    # "protocols":[Ljava/lang/String;
    :cond_5f
    const/4 v1, 0x0

    .restart local v1    # "x509CipherSuitesNeeded":Z
    goto :goto_3f

    .line 151
    :cond_61
    const/4 v0, 0x0

    .restart local v0    # "pskCipherSuitesNeeded":Z
    goto :goto_44
.end method

.method private static varargs concat([[Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p0, "arrays"    # [[Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 620
    const/4 v2, 0x0

    .line 621
    .local v2, "resultLength":I
    array-length v6, p0

    move v4, v5

    :goto_4
    if-ge v4, v6, :cond_d

    aget-object v0, p0, v4

    .line 622
    .local v0, "array":[Ljava/lang/String;
    array-length v7, v0

    add-int/2addr v2, v7

    .line 621
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 624
    .end local v0    # "array":[Ljava/lang/String;
    :cond_d
    new-array v1, v2, [Ljava/lang/String;

    .line 625
    .local v1, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 626
    .local v3, "resultOffset":I
    array-length v6, p0

    move v4, v5

    :goto_12
    if-ge v4, v6, :cond_1f

    aget-object v0, p0, v4

    .line 627
    .restart local v0    # "array":[Ljava/lang/String;
    array-length v7, v0

    invoke-static {v0, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    array-length v7, v0

    add-int/2addr v3, v7

    .line 626
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 630
    .end local v0    # "array":[Ljava/lang/String;
    :cond_1f
    return-object v1
.end method

.method private static createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 469
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .line 471
    .local v4, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 472
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v5

    .line 473
    .local v5, "kms":[Ljavax/net/ssl/KeyManager;
    invoke-static {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v6

    .line 474
    .local v6, "result":Ljavax/net/ssl/X509KeyManager;
    if-nez v6, :cond_3c

    .line 475
    new-instance v7, Ljava/security/KeyManagementException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No X509KeyManager among default KeyManagers: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 476
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 475
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_35} :catch_35
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_35} :catch_44
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_35} :catch_3d

    .line 479
    .end local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v6    # "result":Ljavax/net/ssl/X509KeyManager;
    :catch_35
    move-exception v2

    .line 480
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/security/KeyManagementException;

    invoke-direct {v7, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 478
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v6    # "result":Ljavax/net/ssl/X509KeyManager;
    :cond_3c
    return-object v6

    .line 483
    .end local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v6    # "result":Ljavax/net/ssl/X509KeyManager;
    :catch_3d
    move-exception v3

    .line 484
    .local v3, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v7, Ljava/security/KeyManagementException;

    invoke-direct {v7, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 481
    .end local v3    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_44
    move-exception v1

    .line 482
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v7, Ljava/security/KeyManagementException;

    invoke-direct {v7, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 537
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 539
    .local v3, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v6, 0x0

    check-cast v6, Ljava/security/KeyStore;

    invoke-virtual {v3, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 540
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    .line 541
    .local v4, "tms":[Ljavax/net/ssl/TrustManager;
    invoke-static {v4}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    .line 542
    .local v5, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-nez v5, :cond_3d

    .line 543
    new-instance v6, Ljava/security/KeyManagementException;

    .line 544
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No X509TrustManager in among default TrustManagers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 545
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 544
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 543
    invoke-direct {v6, v7}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_36
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_36} :catch_36
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_36} :catch_3e

    .line 548
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v4    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v5    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_36
    move-exception v2

    .line 549
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/security/KeyManagementException;

    invoke-direct {v6, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 547
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v4    # "tms":[Ljavax/net/ssl/TrustManager;
    .restart local v5    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_3d
    return-object v5

    .line 550
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v4    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v5    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_3e
    move-exception v1

    .line 551
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v6, Ljava/security/KeyManagementException;

    invoke-direct {v6, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static filterFromProtocols([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "protocols"    # [Ljava/lang/String;
    .param p1, "obsoleteProtocol"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 387
    array-length v3, p0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 388
    sget-object v2, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v2

    .line 391
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v0, "newProtocols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, p0

    :goto_16
    if-ge v2, v3, :cond_26

    aget-object v1, p0, v2

    .line 393
    .local v1, "protocol":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 394
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 397
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_26
    sget-object v2, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private static findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;
    .registers 7
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .prologue
    const/4 v5, 0x0

    .line 509
    const/4 v2, 0x0

    array-length v3, p0

    :goto_3
    if-ge v2, v3, :cond_19

    aget-object v1, p0, v2

    .line 510
    .local v1, "km":Ljavax/net/ssl/KeyManager;
    instance-of v4, v1, Lcom/android/org/conscrypt/PSKKeyManager;

    if-eqz v4, :cond_e

    .line 511
    check-cast v1, Lcom/android/org/conscrypt/PSKKeyManager;

    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    return-object v1

    .line 512
    .restart local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_e
    if-eqz v1, :cond_16

    .line 514
    :try_start_10
    invoke-static {v1}, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->getInstance(Ljava/lang/Object;)Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v2

    return-object v2

    .line 515
    :catch_15
    move-exception v0

    .line 509
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 518
    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_19
    return-object v5
.end method

.method private static findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .registers 5
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .prologue
    .line 494
    const/4 v1, 0x0

    array-length v2, p0

    :goto_2
    if-ge v1, v2, :cond_10

    aget-object v0, p0, v1

    .line 495
    .local v0, "km":Ljavax/net/ssl/KeyManager;
    instance-of v3, v0, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_d

    .line 496
    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    .end local v0    # "km":Ljavax/net/ssl/KeyManager;
    return-object v0

    .line 494
    .restart local v0    # "km":Ljavax/net/ssl/KeyManager;
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 499
    .end local v0    # "km":Ljavax/net/ssl/KeyManager;
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method private static findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .registers 5
    .param p0, "tms"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 562
    const/4 v1, 0x0

    array-length v2, p0

    :goto_2
    if-ge v1, v2, :cond_10

    aget-object v0, p0, v1

    .line 563
    .local v0, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v3, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_d

    .line 564
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .end local v0    # "tm":Ljavax/net/ssl/TrustManager;
    return-object v0

    .line 562
    .restart local v0    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 567
    .end local v0    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method static getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 157
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 158
    .local v0, "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    if-nez v0, :cond_19

    .line 160
    new-instance v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 163
    .end local v0    # "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    new-instance v4, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-direct {v4}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    .line 164
    new-instance v5, Lcom/android/org/conscrypt/ServerSessionContext;

    invoke-direct {v5}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    move-object v2, v1

    move-object v3, v1

    move-object v6, v1

    .line 160
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    .restart local v0    # "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 167
    :cond_19
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    return-object v1
.end method

.method private static getDefaultCipherSuites(ZZ)[Ljava/lang/String;
    .registers 8
    .param p0, "x509CipherSuitesNeeded"    # Z
    .param p1, "pskCipherSuitesNeeded"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 589
    if-eqz p0, :cond_34

    .line 591
    if-eqz p1, :cond_20

    .line 598
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    .line 599
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    .line 600
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v4

    .line 601
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    .line 598
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 604
    :cond_20
    new-array v0, v5, [[Ljava/lang/String;

    .line 605
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    .line 606
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    .line 604
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 608
    :cond_34
    if-eqz p1, :cond_4a

    .line 610
    new-array v0, v5, [[Ljava/lang/String;

    .line 611
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    .line 612
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    .line 610
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 615
    :cond_4a
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v1, v0, v3

    return-object v0
.end method

.method private static getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 460
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 461
    .local v0, "result":Ljavax/net/ssl/X509KeyManager;
    if-nez v0, :cond_a

    .line 463
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 465
    :cond_a
    return-object v0
.end method

.method static getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 526
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 527
    .local v0, "result":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_a

    .line 529
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 531
    :cond_a
    return-object v0
.end method

.method private isSniEnabledByDefault()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 408
    :try_start_1
    const-string/jumbo v2, "jsse.enableSNIExtension"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "enableSNI":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 410
    return v4

    .line 411
    :cond_15
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 412
    const/4 v2, 0x0

    return v2

    .line 414
    :cond_20
    new-instance v2, Ljava/lang/RuntimeException;

    .line 415
    const-string/jumbo v3, "Can only set \"jsse.enableSNIExtension\" to \"true\" or \"false\""

    .line 414
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_29} :catch_29

    .line 417
    .end local v1    # "enableSNI":Ljava/lang/String;
    :catch_29
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/SecurityException;
    return v4
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 453
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 454
    :catch_5
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method getAlpnProtocols()[B
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    return-object v0
.end method

.method getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    return-object v0
.end method

.method getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    return v0
.end method

.method getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    return v0
.end method

.method getOCSPResponse()[B
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    return-object v0
.end method

.method getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    return-object v0
.end method

.method getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    goto :goto_6
.end method

.method getUseCipherSuitesOrder()Z
    .registers 2

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    return v0
.end method

.method getUseClientMode()Z
    .registers 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    return v0
.end method

.method getUseSni()Z
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-direct {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->isSniEnabledByDefault()Z

    move-result v0

    goto :goto_a
.end method

.method getWantClientAuth()Z
    .registers 2

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    return v0
.end method

.method getX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method isCTVerificationEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 637
    if-nez p1, :cond_4

    .line 638
    const/4 v0, 0x0

    return v0

    .line 642
    :cond_4
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    if-eqz v0, :cond_a

    .line 643
    const/4 v0, 0x1

    return v0

    .line 645
    :cond_a
    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setAlpnProtocols([B)V
    .registers 4
    .param p1, "alpnProtocols"    # [B

    .prologue
    .line 261
    if-eqz p1, :cond_e

    array-length v0, p1

    if-nez v0, :cond_e

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "alpnProtocols.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_e
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    .line 265
    return-void
.end method

.method setAlpnProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "alpnProtocols"    # [Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->toLengthPrefixedList([Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setAlpnProtocols([B)V

    .line 250
    return-void
.end method

.method setCTVerificationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    .line 362
    return-void
.end method

.method setEnableSessionCreation(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 327
    return-void
.end method

.method setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 218
    return-void
.end method

.method setEnabledProtocols([Ljava/lang/String;)V
    .registers 5
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 232
    if-nez p1, :cond_b

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "protocols == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_b
    const-string/jumbo v1, "SSLv3"

    invoke-static {p1, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->filterFromProtocols([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "filteredProtocols":[Ljava/lang/String;
    array-length v1, p1

    array-length v2, v0

    if-eq v1, v2, :cond_26

    const/4 v1, 0x1

    :goto_17
    iput-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    .line 238
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 239
    return-void

    .line 237
    :cond_26
    const/4 v1, 0x0

    goto :goto_17
.end method

.method setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .registers 2
    .param p1, "endpointIdentificationAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    .line 576
    return-void
.end method

.method setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 294
    return-void
.end method

.method setOCSPResponse([B)V
    .registers 2
    .param p1, "response"    # [B

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    .line 376
    return-void
.end method

.method setSCTExtension([B)V
    .registers 2
    .param p1, "extension"    # [B

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    .line 369
    return-void
.end method

.method setUseCipherSuitesOrder(Z)V
    .registers 2
    .param p1, "useCipherSuitesOrder"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    .line 584
    return-void
.end method

.method setUseClientMode(Z)V
    .registers 2
    .param p1, "mode"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 277
    return-void
.end method

.method setUseSessionTickets(Z)V
    .registers 2
    .param p1, "useSessionTickets"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    .line 339
    return-void
.end method

.method setUseSni(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 346
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    .line 347
    return-void
.end method

.method setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 311
    return-void
.end method
