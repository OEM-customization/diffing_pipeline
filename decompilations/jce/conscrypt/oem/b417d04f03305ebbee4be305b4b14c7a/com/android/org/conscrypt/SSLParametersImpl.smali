.class final Lcom/android/org/conscrypt/SSLParametersImpl;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;,
        Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static volatile blacklist defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private static volatile blacklist defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile blacklist defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private blacklist algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field blacklist applicationProtocolSelector:Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

.field blacklist applicationProtocols:[B

.field blacklist channelIdEnabled:Z

.field private final blacklist clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

.field private blacklist client_mode:Z

.field private blacklist ctVerificationEnabled:Z

.field private blacklist enable_session_creation:Z

.field blacklist enabledCipherSuites:[Ljava/lang/String;

.field blacklist enabledProtocols:[Ljava/lang/String;

.field private blacklist endpointIdentificationAlgorithm:Ljava/lang/String;

.field blacklist isEnabledProtocolsFiltered:Z

.field private blacklist need_client_auth:Z

.field blacklist ocspResponse:[B

.field private final blacklist pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

.field blacklist sctExtension:[B

.field private final blacklist serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

.field private blacklist sniMatchers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist useCipherSuitesOrder:Z

.field blacklist useSessionTickets:Z

.field private blacklist useSni:Ljava/lang/Boolean;

.field private blacklist want_client_auth:Z

.field private final blacklist x509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private final greylist x509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 464
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;Ljavax/net/ssl/X509KeyManager;Lcom/android/org/conscrypt/PSKKeyManager;Ljavax/net/ssl/X509TrustManager;Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 9
    .param p1, "clientSessionContext"    # Lcom/android/org/conscrypt/ClientSessionContext;
    .param p2, "serverSessionContext"    # Lcom/android/org/conscrypt/ServerSessionContext;
    .param p3, "x509KeyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p4, "pskKeyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p5, "x509TrustManager"    # Ljavax/net/ssl/X509TrustManager;
    .param p6, "sslParams"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 104
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 165
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 166
    iput-object p2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    .line 167
    iput-object p3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 168
    iput-object p4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    .line 169
    iput-object p5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 171
    nop

    .line 172
    iget-object v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_23

    move-object v0, v1

    goto :goto_29

    :cond_23
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_29
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 173
    iget-boolean v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    .line 174
    iget-object v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_35

    .line 175
    move-object v0, v1

    goto :goto_3b

    .line 176
    :cond_35
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_3b
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 177
    iget-boolean v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 178
    iget-boolean v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 179
    iget-boolean v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 180
    iget-boolean v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 181
    iget-object v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    .line 182
    iget-boolean v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    .line 183
    iget-boolean v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    .line 184
    nop

    .line 185
    iget-object v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    if-nez v0, :cond_60

    move-object v0, v1

    goto :goto_66

    :cond_60
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_66
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    .line 186
    nop

    .line 187
    iget-object v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    if-nez v0, :cond_6f

    move-object v0, v1

    goto :goto_75

    :cond_6f
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_75
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    .line 188
    iget-object v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    if-nez v0, :cond_7c

    .line 189
    goto :goto_83

    .line 190
    :cond_7c
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    :goto_83
    iput-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 191
    iget-object v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 192
    iget-boolean v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    .line 193
    iget-object v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    .line 194
    iget-boolean v0, p6, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 195
    return-void
.end method

.method constructor blacklist <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V
    .registers 11
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

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 104
    sget-object v2, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 127
    iput-object p5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    .line 128
    iput-object p4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    .line 131
    if-nez p1, :cond_21

    .line 132
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 134
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    goto :goto_2d

    .line 136
    :cond_21
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 137
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    .line 141
    :goto_2d
    if-nez p2, :cond_36

    .line 142
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    goto :goto_3c

    .line 144
    :cond_36
    invoke-static {p2}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 148
    :goto_3c
    nop

    .line 149
    if-nez p6, :cond_42

    sget-object v2, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    goto :goto_43

    :cond_42
    move-object v2, p6

    .line 148
    :goto_43
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v2, :cond_5a

    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_58

    goto :goto_5a

    :cond_58
    move v2, v1

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v2, v0

    .line 151
    .local v2, "x509CipherSuitesNeeded":Z
    :goto_5b
    iget-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    if-eqz v3, :cond_60

    goto :goto_61

    :cond_60
    move v0, v1

    .line 152
    .local v0, "pskCipherSuitesNeeded":Z
    :goto_61
    invoke-static {v2, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultCipherSuites(ZZ)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 157
    return-void
.end method

.method private static blacklist createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 538
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 540
    .local v1, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 541
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    .line 542
    .local v2, "kms":[Ljavax/net/ssl/KeyManager;
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    .line 543
    .local v3, "result":Ljavax/net/ssl/X509KeyManager;
    if-eqz v3, :cond_17

    .line 547
    return-object v3

    .line 544
    :cond_17
    new-instance v4, Ljava/security/KeyManagementException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No X509KeyManager among default KeyManagers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_32
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_32} :catch_40
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_32} :catch_39
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_32} :catch_32

    .line 552
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v1    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v2    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v3    # "result":Ljavax/net/ssl/X509KeyManager;
    :catch_32
    move-exception v0

    .line 553
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 550
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_39
    move-exception v0

    .line 551
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 548
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_40
    move-exception v0

    .line 549
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 606
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 608
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 609
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 610
    .local v2, "tms":[Ljavax/net/ssl/TrustManager;
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    .line 611
    .local v3, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-eqz v3, :cond_19

    .line 616
    return-object v3

    .line 612
    :cond_19
    new-instance v4, Ljava/security/KeyManagementException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No X509TrustManager in among default TrustManagers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_34} :catch_3b
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_34} :catch_34

    .line 619
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v3    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_34
    move-exception v0

    .line 620
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 617
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_3b
    move-exception v0

    .line 618
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist filterFromCipherSuites([Ljava/lang/String;Ljava/util/Set;)[Ljava/lang/String;
    .registers 7
    .param p0, "cipherSuites"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 452
    .local p1, "toRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_27

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_27

    .line 455
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 456
    .local v0, "newCipherSuites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 457
    .local v3, "cipherSuite":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 458
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v3    # "cipherSuite":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 461
    :cond_1e
    sget-object v1, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 453
    .end local v0    # "newCipherSuites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_27
    :goto_27
    return-object p0
.end method

.method private static blacklist filterFromProtocols([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "protocols"    # [Ljava/lang/String;
    .param p1, "obsoleteProtocol"    # Ljava/lang/String;

    .line 438
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    aget-object v0, p0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 439
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 442
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v0, "newProtocols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v2, p0

    :goto_16
    if-ge v1, v2, :cond_26

    aget-object v3, p0, v1

    .line 444
    .local v3, "protocol":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 445
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v3    # "protocol":Ljava/lang/String;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 448
    :cond_26
    sget-object v1, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static blacklist findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;
    .registers 5
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .line 578
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_19

    aget-object v2, p0, v1

    .line 579
    .local v2, "km":Ljavax/net/ssl/KeyManager;
    instance-of v3, v2, Lcom/android/org/conscrypt/PSKKeyManager;

    if-eqz v3, :cond_e

    .line 580
    move-object v0, v2

    check-cast v0, Lcom/android/org/conscrypt/PSKKeyManager;

    return-object v0

    .line 581
    :cond_e
    if-eqz v2, :cond_16

    .line 583
    :try_start_10
    invoke-static {v2}, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->getInstance(Ljava/lang/Object;)Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v0

    .line 584
    :catch_15
    move-exception v3

    .line 578
    .end local v2    # "km":Ljavax/net/ssl/KeyManager;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 587
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .registers 5
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .line 563
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p0, v1

    .line 564
    .local v2, "km":Ljavax/net/ssl/KeyManager;
    instance-of v3, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_e

    .line 565
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    return-object v0

    .line 563
    .end local v2    # "km":Ljavax/net/ssl/KeyManager;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 568
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .registers 5
    .param p0, "tms"    # [Ljavax/net/ssl/TrustManager;

    .line 631
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p0, v1

    .line 632
    .local v2, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_e

    .line 633
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    .line 631
    .end local v2    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 636
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 200
    .local v0, "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    if-nez v0, :cond_1b

    .line 202
    new-instance v8, Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-direct {v5}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    new-instance v6, Lcom/android/org/conscrypt/ServerSessionContext;

    invoke-direct {v6}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    move-object v0, v8

    sput-object v8, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 209
    :cond_1b
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    return-object v1
.end method

.method private static blacklist getDefaultCipherSuites(ZZ)[Ljava/lang/String;
    .registers 8
    .param p0, "x509CipherSuitesNeeded"    # Z
    .param p1, "pskCipherSuitesNeeded"    # Z

    .line 677
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    if-eqz p0, :cond_30

    .line 679
    if-eqz p1, :cond_1f

    .line 686
    const/4 v4, 0x3

    new-array v4, v4, [[Ljava/lang/String;

    sget-object v5, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v4, v0

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/android/org/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 692
    :cond_1f
    new-array v2, v2, [[Ljava/lang/String;

    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v4, v2, v1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/android/org/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 696
    :cond_30
    if-eqz p1, :cond_43

    .line 698
    new-array v2, v2, [[Ljava/lang/String;

    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v4, v2, v1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/android/org/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 703
    :cond_43
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 529
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 530
    .local v0, "result":Ljavax/net/ssl/X509KeyManager;
    if-nez v0, :cond_b

    .line 532
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 534
    :cond_b
    return-object v0
.end method

.method static greylist getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 595
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 596
    .local v0, "result":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_b

    .line 598
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 600
    :cond_b
    return-object v0
.end method

.method private blacklist isSniEnabledByDefault()Z
    .registers 5

    .line 472
    const-string v0, "true"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "jsse.enableSNIExtension"

    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "enableSNI":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 474
    return v1

    .line 475
    :cond_10
    const-string v0, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 476
    const/4 v0, 0x0

    return v0

    .line 478
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Can only set \"jsse.enableSNIExtension\" to \"true\" or \"false\""

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/SSLParametersImpl;
    throw v0
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_22} :catch_22

    .line 481
    .end local v2    # "enableSNI":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/org/conscrypt/SSLParametersImpl;
    :catch_22
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/SecurityException;
    return v1
.end method


# virtual methods
.method protected whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 517
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 518
    :catch_5
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method blacklist cloneWithTrustManager(Ljavax/net/ssl/X509TrustManager;)Lcom/android/org/conscrypt/SSLParametersImpl;
    .registers 10
    .param p1, "newTrustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 524
    new-instance v7, Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    iget-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    iget-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    move-object v0, v7

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>(Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;Ljavax/net/ssl/X509KeyManager;Lcom/android/org/conscrypt/PSKKeyManager;Ljavax/net/ssl/X509TrustManager;Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v7
.end method

.method blacklist getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;
    .registers 2

    .line 663
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    return-object v0
.end method

.method blacklist getApplicationProtocolSelector()Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    return-object v0
.end method

.method blacklist getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->decodeProtocols([B)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    return-object v0
.end method

.method blacklist getEnableSessionCreation()Z
    .registers 2

    .line 385
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    return v0
.end method

.method blacklist getEnabledCipherSuites()[Ljava/lang/String;
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "TLSv1.3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :cond_20
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method blacklist getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method blacklist getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .registers 2

    .line 640
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getNeedClientAuth()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    return v0
.end method

.method blacklist getOCSPResponse()[B
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    return-object v0
.end method

.method blacklist getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    return-object v0
.end method

.method blacklist getSNIMatchers()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sniMatchers:Ljava/util/Collection;

    if-nez v0, :cond_6

    .line 653
    const/4 v0, 0x0

    return-object v0

    .line 655
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sniMatchers:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method blacklist getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    :goto_9
    return-object v0
.end method

.method blacklist getUseCipherSuitesOrder()Z
    .registers 2

    .line 648
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    return v0
.end method

.method blacklist getUseClientMode()Z
    .registers 2

    .line 335
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    return v0
.end method

.method blacklist getUseSni()Z
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->isSniEnabledByDefault()Z

    move-result v0

    :goto_d
    return v0
.end method

.method blacklist getWantClientAuth()Z
    .registers 2

    .line 369
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    return v0
.end method

.method blacklist getX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method greylist getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method blacklist isCTVerificationEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 711
    if-nez p1, :cond_4

    .line 712
    const/4 v0, 0x0

    return v0

    .line 716
    :cond_4
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    if-eqz v0, :cond_a

    .line 717
    const/4 v0, 0x1

    return v0

    .line 719
    :cond_a
    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method blacklist setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    .registers 2
    .param p1, "algorithmConstraints"    # Ljava/security/AlgorithmConstraints;

    .line 667
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 668
    return-void
.end method

.method blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 2
    .param p1, "applicationProtocolSelector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 312
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 313
    return-void
.end method

.method blacklist setApplicationProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 300
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->encodeProtocols([Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 301
    return-void
.end method

.method blacklist setCTVerificationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 412
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    .line 413
    return-void
.end method

.method blacklist setEnableSessionCreation(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 377
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 378
    return-void
.end method

.method blacklist setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .line 267
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES_SET:Ljava/util/Set;

    .line 268
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->filterFromCipherSuites([Ljava/lang/String;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 270
    return-void
.end method

.method greylist setEnabledProtocols([Ljava/lang/String;)V
    .registers 5
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 285
    if-eqz p1, :cond_1f

    .line 288
    nop

    .line 289
    const-string v0, "SSLv3"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->filterFromProtocols([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "filteredProtocols":[Ljava/lang/String;
    array-length v1, p1

    array-length v2, v0

    if-eq v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    iput-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    .line 291
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 292
    return-void

    .line 286
    .end local v0    # "filteredProtocols":[Ljava/lang/String;
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .registers 2
    .param p1, "endpointIdentificationAlgorithm"    # Ljava/lang/String;

    .line 644
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    .line 645
    return-void
.end method

.method blacklist setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 342
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 345
    return-void
.end method

.method blacklist setOCSPResponse([B)V
    .registers 2
    .param p1, "response"    # [B

    .line 426
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    .line 427
    return-void
.end method

.method blacklist setSCTExtension([B)V
    .registers 2
    .param p1, "extension"    # [B

    .line 419
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    .line 420
    return-void
.end method

.method blacklist setSNIMatchers(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;)V"
        }
    .end annotation

    .line 659
    .local p1, "sniMatchers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/net/ssl/SNIMatcher;>;"
    if-eqz p1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sniMatchers:Ljava/util/Collection;

    .line 660
    return-void
.end method

.method blacklist setUseCipherSuitesOrder(Z)V
    .registers 2
    .param p1, "useCipherSuitesOrder"    # Z

    .line 671
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    .line 672
    return-void
.end method

.method blacklist setUseClientMode(Z)V
    .registers 2
    .param p1, "mode"    # Z

    .line 327
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 328
    return-void
.end method

.method blacklist setUseSessionTickets(Z)V
    .registers 2
    .param p1, "useSessionTickets"    # Z

    .line 389
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    .line 390
    return-void
.end method

.method blacklist setUseSni(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 397
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    .line 398
    return-void
.end method

.method blacklist setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 359
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 362
    return-void
.end method
